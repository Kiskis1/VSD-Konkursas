﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebServiceClient.WebService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(Namespace="http://main/", ConfigurationName="WebService.RTDateTime")]
    public interface RTDateTime {
        
        // CODEGEN: Generating message contract since element name return from namespace  is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://main/RTDateTime/getDateTimeRequest", ReplyAction="http://main/RTDateTime/getDateTimeResponse")]
        WebServiceClient.WebService.getDateTimeResponse getDateTime(WebServiceClient.WebService.getDateTimeRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://main/RTDateTime/getDateTimeRequest", ReplyAction="http://main/RTDateTime/getDateTimeResponse")]
        System.Threading.Tasks.Task<WebServiceClient.WebService.getDateTimeResponse> getDateTimeAsync(WebServiceClient.WebService.getDateTimeRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class getDateTimeRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="getDateTime", Namespace="http://main/", Order=0)]
        public WebServiceClient.WebService.getDateTimeRequestBody Body;
        
        public getDateTimeRequest() {
        }
        
        public getDateTimeRequest(WebServiceClient.WebService.getDateTimeRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class getDateTimeRequestBody {
        
        public getDateTimeRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class getDateTimeResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="getDateTimeResponse", Namespace="http://main/", Order=0)]
        public WebServiceClient.WebService.getDateTimeResponseBody Body;
        
        public getDateTimeResponse() {
        }
        
        public getDateTimeResponse(WebServiceClient.WebService.getDateTimeResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="")]
    public partial class getDateTimeResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string @return;
        
        public getDateTimeResponseBody() {
        }
        
        public getDateTimeResponseBody(string @return) {
            this.@return = @return;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface RTDateTimeChannel : WebServiceClient.WebService.RTDateTime, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class RTDateTimeClient : System.ServiceModel.ClientBase<WebServiceClient.WebService.RTDateTime>, WebServiceClient.WebService.RTDateTime {
        
        public RTDateTimeClient() {
        }
        
        public RTDateTimeClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public RTDateTimeClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public RTDateTimeClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public RTDateTimeClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebServiceClient.WebService.getDateTimeResponse WebServiceClient.WebService.RTDateTime.getDateTime(WebServiceClient.WebService.getDateTimeRequest request) {
            return base.Channel.getDateTime(request);
        }
        
        public string getDateTime() {
            WebServiceClient.WebService.getDateTimeRequest inValue = new WebServiceClient.WebService.getDateTimeRequest();
            inValue.Body = new WebServiceClient.WebService.getDateTimeRequestBody();
            WebServiceClient.WebService.getDateTimeResponse retVal = ((WebServiceClient.WebService.RTDateTime)(this)).getDateTime(inValue);
            return retVal.Body.@return;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<WebServiceClient.WebService.getDateTimeResponse> WebServiceClient.WebService.RTDateTime.getDateTimeAsync(WebServiceClient.WebService.getDateTimeRequest request) {
            return base.Channel.getDateTimeAsync(request);
        }
        
        public System.Threading.Tasks.Task<WebServiceClient.WebService.getDateTimeResponse> getDateTimeAsync() {
            WebServiceClient.WebService.getDateTimeRequest inValue = new WebServiceClient.WebService.getDateTimeRequest();
            inValue.Body = new WebServiceClient.WebService.getDateTimeRequestBody();
            return ((WebServiceClient.WebService.RTDateTime)(this)).getDateTimeAsync(inValue);
        }
    }
}
