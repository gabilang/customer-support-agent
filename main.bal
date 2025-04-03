import ballerina/http;
import ballerinax/ai.agent;

listener agent:Listener supportListener = new (listenOn = check http:getDefaultListener());

service /support on supportListener {
    resource function post chat(@http:Payload agent:ChatReqMessage request) returns agent:ChatRespMessage|error {

        string stringResult = check _supportAgent->run(request.message);
        return {message: stringResult};
    }
}
