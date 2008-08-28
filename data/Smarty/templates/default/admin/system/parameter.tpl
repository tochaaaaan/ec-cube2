﻿<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2008 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<form name="form1" id="form1" method="post" action="./parameter.php">
<input type="hidden" name="mode" value="update" />
<div id="basis" class="contents-main">
  <ul class="red fs12st">
    <li>パラメータの値がPHP定数として設定されます。</li>
    <li>文字列は「&quot;」で囲んで下さい。</li>
    <li>設定値によってはサイトが機能しなくなる場合もありますので、十分ご注意下さい。</li>
  </ul>

  <table class="form">
    <tr>
      <th>定数名</th>
      <th>パラメータ値</th>
    </tr>
<!--{section name=cnt loop=$arrKeys}-->
    <tr>
      <th>
      <!--{$arrKeys[cnt]|escape}-->
      </th>
      <td>
        <div style="font-size: 80%; color: #666666"><!--{$arrComments[cnt]|escape}--></div>
        <div>
          <!--{assign var=key value=$arrKeys[cnt]}-->
          <input type="text" name="<!--{$arrKeys[cnt]|escape}-->" value="<!--{$arrValues[cnt]|escape}-->" size="64" style="<!--{if $arrErr.$key != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" />
          <!--{if $arrErr.$key}-->
          <span class="attention"><!--{$arrErr.$key}--></span>
          <!--{/if}-->
        </div>
      </td>
    </tr>
<!--{/section}-->
  </table>

  <div class="btn"><button type="submit"><span>この内容で登録する</span></button></div>
</div>
</form>
