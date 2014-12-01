.class public Lcom/samsung/appdisabler/ImsiItemChecker;
.super Ljava/lang/Thread;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;,
        Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;,
        Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    }
.end annotation


# static fields
.field private static final APK_VERSION_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.appdisabler.app"

.field protected static final CUSTOM_XML_FILE:Ljava/lang/String; = "/system/csc/appDisablerList.xml"

.field protected static final ERROR_HEADER:Ljava/lang/String; = "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

.field private static final MSG_CHECK_FINISH_LOOPER:I = 0x70

.field private static final MSG_CHECK_TIMEOUT:I = 0x6f

.field private static final MSG_SHOW_DIALOG:I = 0xc9


# instance fields
.field private CHECK_DELAY_IN_MS:I

.field private mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

.field private mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

.field private mContext:Landroid/content/Context;

.field private mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

.field private mCurrentImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNetworkNumeric:Ljava/lang/String;

.field private mIsImsiNumericBase:Z

.field private mIsNetworkNumeric:Z

.field private mIsSimNumeric:Z

.field private mIsSimSpn:Z

.field private mShowPackage:Z

.field private mSimImsiNumericBase:Ljava/lang/String;

.field private mSimNumeric:Ljava/lang/String;

.field private mSimSpn:Ljava/lang/String;

.field private mStartTimeInMiliseconds:J

.field private mTimeoutOffset:J

.field private packageManager:Landroid/content/pm/PackageManager;

.field private phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->CHECK_DELAY_IN_MS:I

    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/appdisabler/ImsiItemChecker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/appdisabler/ImsiItemChecker;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->receiveNetworkNumericFromDevice()V

    return-void
.end method

.method private changeAppVisibility(Ljava/util/Set;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeAppVisibility, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " show: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/appdisabler/ShortcutHandler;

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/appdisabler/ShortcutHandler;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state of application: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-ne v0, v9, :cond_0

    const-string v5, "Enabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->addShortcut(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-eq v0, v8, :cond_2

    if-nez v0, :cond_0

    :cond_2
    :try_start_1
    const-string v5, "Disabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->uninstallShort(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    const-string v5, "-------------- End checking imsi item --------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method private checkSimState()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported SIM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "SIM_STATE_READY"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->receiveInfoFromSim()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    :pswitch_2
    const-string v1, "SIM_STATE_PIN_REQUIRED || SIM_STATE_PUK_REQUIRED"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "SIM_STATE_ABSENT"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private displayImsiItems()V
    .locals 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout_in_seconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v1}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "imsiList = null"

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private hideAppAfterTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->isHideAfterTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "-------------- End checking imsi item --------------"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDualSim()Z
    .locals 4

    const-string v0, "none"

    const-string v2, "gsm.sim.state_1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNetworkDataValidate()Z
    .locals 6

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v4}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network numeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " equal XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". PASS!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network numeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " different than XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". FAIL!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSimDataValidate()Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    if-eqz v8, :cond_2

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM numeric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " equal XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". PASS!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_1
    if-nez v6, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM numeric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_2
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/samsung/appdisabler/ImsiItem;->looseCompare(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Imsi numeric base: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    if-eqz v8, :cond_6

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sim spn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " equal XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". PASS!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_5
    if-nez v6, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sim spn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private isTimeout()Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWiFiOnly()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileNetworkSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseXml()Z
    .locals 11

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    new-instance v7, Lcom/samsung/appdisabler/XmlItemHandler;

    invoke-direct {v7}, Lcom/samsung/appdisabler/XmlItemHandler;-><init>()V

    new-instance v9, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v9}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v9, "parseXml"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    const-string v10, "/system/csc/appDisablerList.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-interface {v8, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getTimeoutInSeconds()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getImsiList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_0
    :goto_0
    move-object v2, v3

    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getValidationErrors()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v9, "Parsing XML ended successfully!"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    const/4 v9, 0x1

    :goto_2
    return v9

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    const-string v9, "ParserConfigurationException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v9, "close inputStream"

    :goto_4
    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_5
    :try_start_5
    const-string v9, "SAXException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v9, "close inputStream"

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_6
    :try_start_7
    const-string v9, "FileNotFoundException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    const-string v9, "close inputStream"

    goto :goto_4

    :catch_6
    move-exception v0

    :goto_7
    :try_start_9
    const-string v9, "IOException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    :catch_7
    move-exception v0

    const-string v9, "close inputStream"

    goto :goto_4

    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v2, :cond_2

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_2
    :goto_9
    throw v9

    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/appdisabler/ImsiItemChecker;->sendErrorMsg(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_2

    :catch_8
    move-exception v0

    const-string v10, "close inputStream"

    invoke-static {v10, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_9
    move-exception v0

    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    move-object v2, v3

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_d
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3
.end method

.method private receiveInfoFromSim()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data from SIM do not loaded yet: ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private receiveNetworkNumericFromDevice()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->simNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendErrorMsg(Ljava/lang/String;)V
    .locals 3

    const-string v1, "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0xc9

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const-string/jumbo v3, "show error dialog"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    const-string v4, "OK"

    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/appdisabler/ImsiItemChecker$1;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private startTimeMeasuring()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Measuring time started"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    :cond_0
    return-void
.end method


# virtual methods
.method public isApkVersionInstalled()Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    const-string v5, "com.samsung.appdisabler.app"

    iget-object v6, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public run()V
    .locals 13

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v7, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isDualSim()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isWiFiOnly()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const-string v1, "SamsungAppDisabler currently is not supporting dual SIM or WiFi only devices, delete /system/csc/appDisablerList.xml from CSC"

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v7, 0xc9

    iput v7, v2, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->parseXml()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    const-string v7, "Run exception"

    invoke-static {v7, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->displayImsiItems()V

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/appdisabler/ImsiItem;

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    iput-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    const-string v7, "------------- Start checking imsi item -------------"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->isForceApplicationTurnOff()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto :goto_1

    :cond_4
    const-string v7, "------------- Validating SIM data -------------"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    :goto_5
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-eqz v7, :cond_7

    :cond_6
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    if-nez v7, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isTimeout()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "Waiting time elapsed"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V

    :cond_8
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isTimeout()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isSimDataValidate()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->checkSimState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->CHECK_DELAY_IN_MS:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string v7, "----------- Validating Network data -----------"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-nez v7, :cond_e

    const-string v7, "Checking network numeric"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_10

    iget-wide v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    sub-long/2addr v9, v11

    sub-long v5, v7, v9

    :goto_7
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v8, 0x6f

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v7, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v7, :cond_3

    :cond_e
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isNetworkDataValidate()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    invoke-direct {p0, v7, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto/16 :goto_1

    :cond_f
    const/4 v7, 0x0

    goto :goto_6

    :cond_10
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    iget-wide v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    goto :goto_7

    :cond_11
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
