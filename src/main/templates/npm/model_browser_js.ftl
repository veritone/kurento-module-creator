<#assign node_name=module.code.api.js.nodeName>
<#if node_name != "kurento-client-core"
  && node_name != "kurento-client-elements"
  && node_name != "kurento-client-filters">
lib/browser.js
/**
 * Loader for the ${node_name} package on the browser
 */

require('.');
</#if>
