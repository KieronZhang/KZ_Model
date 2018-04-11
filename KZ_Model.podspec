
Pod::Spec.new do |s|

    s.name = 'KZ_Model'
    s.version = '0.1.1'
    s.summary = 'iOS & MacOS JSON analysis.'
    s.homepage = 'https://github.com/KieronZhang/KZ_Model'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang.' => 'https://github.com/KieronZhang'}

    s.osx.deployment_target = '10.10'
    s.ios.deployment_target = '8.0'

    s.source = {:git => 'https://github.com/KieronZhang/KZ_Model.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.frameworks = 'Foundation'
    s.vendored_frameworks = 'KZ_Model/KZ_ModelFramework.framework'
    s.requires_arc = true

    s.dependency 'KZ_JSON'

end
