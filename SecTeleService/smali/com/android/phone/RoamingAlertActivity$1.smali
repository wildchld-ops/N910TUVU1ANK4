.class Lcom/android/phone/RoamingAlertActivity$1;
.super Ljava/lang/Object;
.source "RoamingAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingAlertActivity$1;->this$0:Lcom/android/phone/RoamingAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    const-string v0, "RoamingAlertActivity"

    const-string v1, "onDismiss"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/RoamingAlertActivity$1;->this$0:Lcom/android/phone/RoamingAlertActivity;

    invoke-virtual {v0}, Lcom/android/phone/RoamingAlertActivity;->finish()V

    return-void
.end method
