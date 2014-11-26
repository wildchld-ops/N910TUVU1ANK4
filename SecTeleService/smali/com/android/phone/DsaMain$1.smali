.class Lcom/android/phone/DsaMain$1;
.super Landroid/content/BroadcastReceiver;
.source "DsaMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaMain;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaMain;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaMain$1;->this$0:Lcom/android/phone/DsaMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    sget-boolean v0, Lcom/android/phone/DsaMain;->mGetResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/DsaMain;->mGetResult:Z

    iget-object v0, p0, Lcom/android/phone/DsaMain$1;->this$0:Lcom/android/phone/DsaMain;

    invoke-virtual {v0}, Lcom/android/phone/DsaMain;->displayResultDialog()V

    :cond_0
    return-void
.end method
