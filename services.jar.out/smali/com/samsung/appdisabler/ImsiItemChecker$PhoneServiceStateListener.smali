.class Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/appdisabler/ImsiItemChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneServiceStateListener"
.end annotation


# instance fields
.field public simNumeric:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->simNumeric:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # invokes: Lcom/samsung/appdisabler/ImsiItemChecker;->receiveNetworkNumericFromDevice()V
    invoke-static {v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$600(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    :cond_0
    return-void
.end method
