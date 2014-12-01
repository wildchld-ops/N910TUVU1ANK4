.class public Lcom/android/incallui/utils/ImsCscParser;
.super Ljava/lang/Object;
.source "ImsCscParser.java"


# instance fields
.field private final CUSTOMER_CSC_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImsCscParser"

    iput-object v0, p0, Lcom/android/incallui/utils/ImsCscParser;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/utils/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/utils/ImsCscParser;->CUSTOMER_CSC_FILE:Ljava/lang/String;

    return-void
.end method

.method private getNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/incallui/utils/CscParser;

    iget-object v7, p0, Lcom/android/incallui/utils/ImsCscParser;->CUSTOMER_CSC_FILE:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/android/incallui/utils/CscParser;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v7, "GeneralInfo"

    invoke-virtual {v1, v7}, Lcom/android/incallui/utils/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v7, "ImsCscParser"

    const-string v8, "No network info"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_1
    const-string v7, "NetworkInfo"

    invoke-virtual {v1, v2, v7}, Lcom/android/incallui/utils/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v7, "ImsCscParser"

    const-string v8, "No network info"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_4

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "MCCMNC"

    invoke-virtual {v1, v7, v8}, Lcom/android/incallui/utils/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/incallui/utils/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "NetworkName"

    invoke-virtual {v1, v7, v8}, Lcom/android/incallui/utils/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/incallui/utils/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v4

    goto :goto_0
.end method


# virtual methods
.method public getValueFromMPS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/incallui/utils/CscParser;

    iget-object v8, p0, Lcom/android/incallui/utils/ImsCscParser;->CUSTOMER_CSC_FILE:Ljava/lang/String;

    invoke-direct {v1, v8}, Lcom/android/incallui/utils/CscParser;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/incallui/utils/ImsCscParser;->getNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v8, "ImsCscParser"

    const-string v9, "can\'t get MCCMNC from sim"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/android/incallui/utils/CscParser;

    iget-object v8, p0, Lcom/android/incallui/utils/ImsCscParser;->CUSTOMER_CSC_FILE:Ljava/lang/String;

    invoke-direct {v1, v8}, Lcom/android/incallui/utils/CscParser;-><init>(Ljava/lang/String;)V

    :cond_2
    const-string v8, "Settings.IMSSettings"

    invoke-virtual {v1, v8}, Lcom/android/incallui/utils/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v8, "ImsCscParser"

    const-string v9, "no node in imssettings"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v5, p1}, Lcom/android/incallui/utils/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v8, "ImsCscParser"

    const-string v9, "no nodeList in imserttings"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v0, v8, :cond_6

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    const-string v9, "NetworkName"

    invoke-virtual {v1, v8, v9}, Lcom/android/incallui/utils/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/incallui/utils/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {v1, v8, p2}, Lcom/android/incallui/utils/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/incallui/utils/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-string v8, "ImsCscParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getValueFromMPS mImsSettingsValue : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto :goto_0
.end method
