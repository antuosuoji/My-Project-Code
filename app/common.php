<?php
/**
 * xss过滤函数
 *
 * @param $string
 * @return string
 */
 use \think\Db;
function remove_xss($string) {
    $string = preg_replace('/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]+/S', '', $string);

    $parm1 = Array('javascript', 'vbscript', 'expression', 'applet', 'meta', 'xml', 'blink', 'link', 'script', 'embed', 'object', 'iframe', 'frame', 'frameset', 'ilayer', 'layer', 'bgsound', 'title', 'base');

    $parm2 = Array('onabort', 'onactivate', 'onafterprint', 'onafterupdate', 'onbeforeactivate', 'onbeforecopy', 'onbeforecut', 'onbeforedeactivate', 'onbeforeeditfocus', 'onbeforepaste', 'onbeforeprint', 'onbeforeunload', 'onbeforeupdate', 'onblur', 'onbounce', 'oncellchange', 'onchange', 'onclick', 'oncontextmenu', 'oncontrolselect', 'oncopy', 'oncut', 'ondataavailable', 'ondatasetchanged', 'ondatasetcomplete', 'ondblclick', 'ondeactivate', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'onerror', 'onerrorupdate', 'onfilterchange', 'onfinish', 'onfocus', 'onfocusin', 'onfocusout', 'onhelp', 'onkeydown', 'onkeypress', 'onkeyup', 'onlayoutcomplete', 'onload', 'onlosecapture', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onmove', 'onmoveend', 'onmovestart', 'onpaste', 'onpropertychange', 'onreadystatechange', 'onreset', 'onresize', 'onresizeend', 'onresizestart', 'onrowenter', 'onrowexit', 'onrowsdelete', 'onrowsinserted', 'onscroll', 'onselect', 'onselectionchange', 'onselectstart', 'onstart', 'onstop', 'onsubmit', 'onunload');

    $parm = array_merge($parm1, $parm2);

	for ($i = 0; $i < sizeof($parm); $i++) {
		$pattern = '/';
		for ($j = 0; $j < strlen($parm[$i]); $j++) {
			if ($j > 0) {
				$pattern .= '(';
				$pattern .= '(&#[x|X]0([9][a][b]);?)?';
				$pattern .= '|(&#0([9][10][13]);?)?';
				$pattern .= ')?';
			}
			$pattern .= $parm[$i][$j];
		}
		$pattern .= '/i';
		$string = preg_replace($pattern, ' ', $string);
	}
	return $string;
}
function msubstr($str, $start=0, $length, $charset="utf-8", $suffix=true)
 {
      if(function_exists("mb_substr"))
       {
              if($suffix)
              return mb_substr($str, $start, $length, $charset)."...";
              else
                   return mb_substr($str, $start, $length, $charset);
         }
         elseif(function_exists('iconv_substr')) {
             if($suffix)
                  return iconv_substr($str,$start,$length,$charset)."...";
             else
                  return iconv_substr($str,$start,$length,$charset);
         }
         $re['utf-8']   = "/[x01-x7f]|[xc2-xdf][x80-xbf]|[xe0-xef]
                  [x80-xbf]{2}|[xf0-xff][x80-xbf]{3}/";
         $re['gb2312'] = "/[x01-x7f]|[xb0-xf7][xa0-xfe]/";
         $re['gbk']    = "/[x01-x7f]|[x81-xfe][x40-xfe]/";
         $re['big5']   = "/[x01-x7f]|[x81-xfe]([x40-x7e]|xa1-xfe])/";
         preg_match_all($re[$charset], $str, $match);
         $slice = join("",array_slice($match[0], $start, $length));
         if($suffix) return $slice."…";
         return $slice;
}
// 获取某个分类信息
function get_cat_info($catid)
{
  $data=Db::name('portal_category')->where(['id'=>$catid])->find();
  return $data;
}
// 获取某条信息
function get_article_info_byid($id)
{
  $data=Db::name('portal_post')->field('id,post_title,post_content,post_title_en')->where(['id'=>$id])->find();
  $data['post_content']=cmf_replace_content_file_url(htmlspecialchars_decode($data['post_content']));
  return $data;
}



?>
