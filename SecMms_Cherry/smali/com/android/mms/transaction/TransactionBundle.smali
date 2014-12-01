.class public Lcom/android/mms/transaction/TransactionBundle;
.super Ljava/lang/Object;
.source "TransactionBundle.java"


# static fields
.field public static final DATA_SWITCH_SUCCESS:Ljava/lang/String; = "isDataSwitchSuccess"

.field private static final MMSC_URL:Ljava/lang/String; = "mmsc-url"

.field private static final PROXY_ADDRESS:Ljava/lang/String; = "proxy-address"

.field private static final PROXY_PORT:Ljava/lang/String; = "proxy-port"

.field private static final PUSH_DATA:Ljava/lang/String; = "mms-push-data"

.field public static final SIM_SLOT:Ljava/lang/String; = "sim-slot"

.field public static final TRANSACTION_TYPE:Ljava/lang/String; = "type"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "sim-slot"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDataSwitchSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "isDataSwitchSuccess"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "isDataSwitchSuccess"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMmscUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mmsc-url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPort()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-port"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPushData()[B
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mms-push-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSimSlot()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "sim-slot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "sim-slot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransactionType()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/transaction/TransactionBundle;->setConnectionSettings(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setConnectionSettings(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mmsc-url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-address"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-port"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transactionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pushData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mmscUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proxyAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proxyPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionBundle;->getSimSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
