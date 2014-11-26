.class Lcom/android/phone/PhoneGlobals$18;
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

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const-string v0, "AutoCSP"

    const-string v1, "AutoCSP Service Connected"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2}, Lcom/android/phone/IAutoCSP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAutoCSP;

    move-result-object v1

    # setter for: Lcom/android/phone/PhoneGlobals;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$4902(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IAutoCSP;)Lcom/android/phone/IAutoCSP;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhoneGlobals;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$4902(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IAutoCSP;)Lcom/android/phone/IAutoCSP;

    return-void
.end method
