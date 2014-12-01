.class Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalHandler"
.end annotation


# static fields
.field private static final CAPTIVE_PORTAL_AUTH_WALKTIME:I = 0x1d4c0

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_PERIOD:I = 0x1388

.field private static final CAPTIVE_PORTAL_CHECK_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static final NEXT_CHECK_TIME:I = 0x927c0

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.CaptivePortalHandler"


# instance fields
.field private mAuthCheckStartTime:J

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mFirstPortalDnsRequest:Z

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mStoppedByScan:Z

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalDnsResolver"

    invoke-direct {v0, p1, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-void
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V

    return-void
.end method

.method private checkCaptivePortal(Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "[checkCaptivePortal]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xe

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    if-eq p1, p0, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x2102c

    iput v1, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "Abnormal request for checking captive portal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "already checking the captive portal!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p0, :cond_1

    const v1, 0x2102a

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x21030

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0
.end method

.method private connectCaptivePortal()V
    .locals 7

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[connectCaptivePortal]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://clients3.google.com/generate_204"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x2

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "couldn\'t resolve a URL : http://clients3.google.com/generate_204"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6308(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v3, 0x4

    iput v3, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getResult()Z
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->isCaptivePortal()Z

    move-result v0

    return v0
.end method

.method private isCaptivePortal()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v7, "Checking http://clients3.google.com/generate_204"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v5, "http://clients3.google.com/generate_204"

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Captive Portal response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/16 v5, 0xcc

    if-eq v2, v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_1
    return v5

    :cond_3
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move v5, v6

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v5
.end method

.method private notifyDisconnect()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x2102a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14700(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    const/4 v9, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x6

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignore msg id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[RESUME_CAPTIVE_PORTAL_CHECK]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v12, 0x21030

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0

    :sswitch_1
    const v12, 0x2102a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[CAPTIVE_PORTAL_CHECK_STATE]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_4

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[CAPTIVE_PORTAL_CHECK_STATE] skip during LCD off"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_0

    const v12, 0x2102a

    const-wide/16 v13, 0x4e20

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    goto/16 :goto_0

    :sswitch_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v2

    const/4 v12, 0x2

    if-ne v2, v12, :cond_7

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string/jumbo v13, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    const/4 v7, 0x0

    const/4 v12, 0x4

    if-ne v2, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v12, :cond_f

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v13, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[mPreviousPrivateIP] : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " [msg.obj] : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/net/InetAddress;

    check-cast v12, Ljava/net/InetAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v9, 0x2

    :cond_a
    :goto_1
    const/4 v12, 0x1

    if-ne v2, v12, :cond_16

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-nez v7, :cond_b

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/net/InetAddress;

    :cond_b
    instance-of v12, v7, Ljava/net/Inet4Address;

    if-eqz v12, :cond_15

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DNS Response SELECTED:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_c
    if-eqz v7, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v12

    const v13, 0x2102d

    const/4 v14, 0x0

    check-cast v7, Ljava/net/Inet4Address;

    invoke-static {v7}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v15

    const-string v16, "http://clients3.google.com/generate_204"

    invoke-static/range {v12 .. v16}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    goto/16 :goto_0

    :cond_d
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    goto :goto_1

    :cond_f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v13, 0x1

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DEFAULT_URL_STRING:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_10
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[second DNS query requested!]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const/4 v12, 0x3

    if-ne v2, v12, :cond_12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_12
    if-nez v2, :cond_a

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    if-eqz v12, :cond_13

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21013

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :try_start_1
    new-instance v11, Ljava/net/URL;

    const-string v12, "http://clients3.google.com/generate_204"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v13, 0x2

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "couldn\'t resolve a URL : http://clients3.google.com/generate_204"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    const/4 v9, 0x2

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    goto/16 :goto_1

    :cond_14
    :try_start_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[DNS query requested!]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "The resolved IP is not IPv4"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v9, 0x3

    :cond_16
    :sswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2102f

    if-ne v12, v13, :cond_19

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[TIMEOUT_CAPTIVE_PORTAL]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->shutdownInput()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v9, 0x3

    :cond_19
    :sswitch_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2102e

    if-ne v12, v13, :cond_1c

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_1a

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[STATUS_CODE_CAPTIVE_PORTAL]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_21

    const/4 v10, 0x1

    :goto_3
    const/4 v9, 0x1

    const/16 v12, 0xcc

    if-eq v8, v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_1c

    if-eqz v10, :cond_1c

    :cond_1b
    const/4 v9, 0x0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    if-ne v12, v0, :cond_2e

    packed-switch v9, :pswitch_data_0

    :cond_1d
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mUnidentifiedCount : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_1e
    const/16 v6, 0x2710

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_2c

    const/16 v6, 0x1388

    :cond_1f
    :goto_5
    const v12, 0x2102a

    int-to-long v13, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_20
    :goto_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    goto/16 :goto_0

    :cond_21
    const/4 v10, 0x0

    goto :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_23

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "CAPTIVE_PORTAL_EVENT_AUTHENTICATED"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21019

    const v14, 0x2101c

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_4

    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_1d

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_25

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Now, the current AP has been automatically authenticated!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_27

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_26

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "CAPTIVE_PORTAL_EVENT_DETECTED"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21019

    const v14, 0x2101a

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_4

    :cond_27
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1d

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    sub-long v12, v4, v12

    const-wide/32 v14, 0x1d4c0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1d

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_28

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21019

    const v14, 0x2101b

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6308(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_29

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x4

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-nez v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6308(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x4

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_1f

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_2d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "start to check the captive portal state after 600000ms"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_2d
    const v6, 0x927c0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_5

    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const v13, 0x2102c

    const/4 v14, -0x1

    invoke-static {v12, v13, v9, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    :sswitch_5
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_2f

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[EVENT_SCAN_STARTED]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x21046

    if-ne v12, v13, :cond_31

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_30

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[EVENT_SCAN_TIMEOUT]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_31
    :sswitch_7
    const v12, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2103e

    if-ne v12, v13, :cond_32

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_32

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_33

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->shutdownInput()V

    :cond_33
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14700(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v12, :cond_38

    const v12, 0x2102f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const v12, 0x2102a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    const v12, 0x21030

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2103e

    if-eq v12, v13, :cond_34

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x21046

    if-ne v12, v13, :cond_36

    :cond_34
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_35

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan completed, but there is ongoing captive portal check"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const v12, 0x21030

    const-wide/16 v13, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_36
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_37

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan started, the current captive portal check need to be canceled"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const v12, 0x21030

    const-wide/16 v13, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2103e

    if-eq v12, v13, :cond_39

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x21046

    if-ne v12, v13, :cond_3b

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v12, :cond_0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_3a

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan completed, check again the captive portal state at once!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const v12, 0x21030

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3b
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan started, but there\'s no ongoing captive portal check."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v12

    goto/16 :goto_7

    :catch_3
    move-exception v12

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2102a -> :sswitch_1
        0x2102e -> :sswitch_4
        0x2102f -> :sswitch_3
        0x21030 -> :sswitch_0
        0x2103d -> :sswitch_5
        0x2103e -> :sswitch_7
        0x21046 -> :sswitch_6
        0x50005 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
