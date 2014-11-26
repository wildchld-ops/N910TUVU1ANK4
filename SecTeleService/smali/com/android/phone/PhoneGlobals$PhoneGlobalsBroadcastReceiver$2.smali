.class Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

.field final synthetic val$request:[B


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    iput-object p2, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->val$request:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v2, "PhoneApp"

    const-string v3, "Wfc ACTION_WFC_SWITCH_PROFILE_BROADCAST received"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc8

    new-array v1, v2, [B

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->val$request:[B

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendOemRilRequestRaw([B[B)I

    move-result v0

    return-void
.end method
