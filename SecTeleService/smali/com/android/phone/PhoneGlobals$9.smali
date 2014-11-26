.class Lcom/android/phone/PhoneGlobals$9;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    :try_start_0
    const-string v1, "PhoneApp"

    const-string v2, "TInCallScreen Connected!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2}, Lcom/skt/prod/phone/ITInCallScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/skt/prod/phone/ITInCallScreen;

    move-result-object v2

    # setter for: Lcom/android/phone/PhoneGlobals;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneGlobals;->access$3302(Lcom/android/phone/PhoneGlobals;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/phone/PhoneGlobals$9$1;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneGlobals$9$1;-><init>(Lcom/android/phone/PhoneGlobals$9;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/PhoneGlobals;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneGlobals;->access$3302(Lcom/android/phone/PhoneGlobals;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    const-string v0, "PhoneApp"

    const-string v1, "TInCallScreen Disconnected!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhoneGlobals;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$3302(Lcom/android/phone/PhoneGlobals;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;

    return-void
.end method
