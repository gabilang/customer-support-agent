import ballerinax/ai.agent;

final agent:AzureOpenAiModel _customer_support_agentModel = check new (serviceUrl, apiKey, deploymentId, apiVersion);
final agent:Agent _customer_support_agentAgent = check new (
    systemPrompt = {
        role: "Customer Support Assistant",
        instructions: string `\\\"You are a helpful customer support assistant for a tech company. Answer customer questions about our products. \\\" +
\\\"Use the tools to check product information and availability.\\\"`
    }, model = _customer_support_agentModel, tools = [productInfo, availability]
);

@agent:Tool
@display {label: "", iconPath: ""}
isolated function productInfo(string productName) returns string {
    string result = getProductInfo(productName);
    return result;
}

@agent:Tool
@display {label: "", iconPath: ""}
isolated function availability(string productName) returns string {
    string result = checkAvailability(productName);
    return result;
}
