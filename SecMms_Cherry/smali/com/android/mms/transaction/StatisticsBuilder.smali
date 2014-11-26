.class public Lcom/android/mms/transaction/StatisticsBuilder;
.super Ljava/lang/Object;
.source "StatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/StatisticsBuilder$Bearer;,
        Lcom/android/mms/transaction/StatisticsBuilder$Direction;,
        Lcom/android/mms/transaction/StatisticsBuilder$Action;,
        Lcom/android/mms/transaction/StatisticsBuilder$Service;,
        Lcom/android/mms/transaction/StatisticsBuilder$Field;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.tmobile.comm.METRIC"

.field private static final EXTRA:Ljava/lang/String; = "PARMS"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.tmobile.comm.RECEIVE_METRICS"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/mms/transaction/StatisticsBuilder$Field;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mms/transaction/StatisticsBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/android/mms/transaction/StatisticsBuilder$1;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/StatisticsBuilder$1;-><init>(Lcom/android/mms/transaction/StatisticsBuilder;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tmobile.comm.METRIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "PARMS"

    invoke-virtual {p0}, Lcom/android/mms/transaction/StatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v6, ""

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_1

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v6, ""

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v6, Lcom/android/mms/transaction/StatisticsBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-void
.end method

.method public sendBroadcast()V
    .locals 4

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->WiFi:Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/StatisticsBuilder;->setBearer(Lcom/android/mms/transaction/StatisticsBuilder$Bearer;)Lcom/android/mms/transaction/StatisticsBuilder;

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/StatisticsBuilder;->setRSSI(I)Lcom/android/mms/transaction/StatisticsBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/transaction/StatisticsBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.tmobile.comm.RECEIVE_METRICS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "StatisticsBuilder/sendBroadcast(): rssi value failed to obtain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAC(Lcom/android/mms/transaction/StatisticsBuilder$Action;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # Lcom/android/mms/transaction/StatisticsBuilder$Action;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->AC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBearer(Lcom/android/mms/transaction/StatisticsBuilder$Bearer;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BEARER:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {p1}, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBytesIn(I)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BYTES_IN:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBytesOut(I)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BYTES_OUT:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDIR(Lcom/android/mms/transaction/StatisticsBuilder$Direction;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->DIR:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDate(Lcom/android/mms/transaction/StatisticsBuilder$Field;Ljava/util/Date;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # Lcom/android/mms/transaction/StatisticsBuilder$Field;
    .param p2    # Ljava/util/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setHashedPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->PM:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setMSG(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->MSG:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setOK(Z)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->OK:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPM(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->PM:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/StatisticsBuilder;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setRSSI(I)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->RSSI:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setSVC(Lcom/android/mms/transaction/StatisticsBuilder$Service;)Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 4
    .param p1    # Lcom/android/mms/transaction/StatisticsBuilder$Service;

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->SVC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setTimeStamp()Lcom/android/mms/transaction/StatisticsBuilder;
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/android/mms/transaction/StatisticsBuilder$Field;->TS:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/transaction/StatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
