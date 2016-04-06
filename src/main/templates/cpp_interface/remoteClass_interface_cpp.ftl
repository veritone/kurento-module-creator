${remoteClass.name}.cpp
/* Autogenerated with kurento-module-creator */

#include "${remoteClass.name}.hpp"
#include <mutex>

<#list module.code.implementation["cppNamespace"]?split("::") as namespace>
namespace ${namespace}
{
</#list>

static std::vector<std::string> hierarchy${remoteClass.name};
std::once_flag initFlag${remoteClass.name};

static void
initHierarchy ()
{
<#list typeHierarchy(remoteClass) as hierarchy>
  hierarchy${remoteClass.name}.push_back("${hierarchy}");
</#list>
}

const std::vector<std::string> &
${remoteClass.name}::getHierarchy () const
{
  std::call_once (initFlag${remoteClass.name},initHierarchy);
  return hierarchy${remoteClass.name};
}

<#list module.code.implementation["cppNamespace"]?split("::")?reverse as namespace>
} /* ${namespace} */
</#list>
