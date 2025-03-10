{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{$componentName = 'subcategories'}

{if !empty($subcategories)}
  {if (isset($display_subcategories) && $display_subcategories eq 1) || !isset($display_subcategories) }
    <div id="subcategories" class="{$componentName}">
      <h2 class="{$componentName}-title">{l s='Subcategories' d='Shop.Theme.Category'}</h2>

      <ul class="{$componentName}-list">
        {foreach from=$subcategories item=subcategory}
          <li class="{$componentName}-item">
            <div class="{$componentName}-image">
              <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="{$componentName}-link img">
                {if !empty($subcategory.image.large.url)}
                  <img class="{$componentName}-image replace-2x" src="{$subcategory.image.large.url}" alt="{$subcategory.name|escape:'html':'UTF-8'}" loading="lazy" width="141" height="180"/>
                {/if}
              </a>
            </div>

            <h5 class="{$componentName}-name"><a class="{$componentName}-name-link" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'}</a></h5>
          </li>
        {/foreach}
      </ul>
    </div>
  {/if}
{/if}
