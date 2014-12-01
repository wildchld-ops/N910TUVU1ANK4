.class Lcom/android/settings/nearby/AcceptListPreference$2;
.super Ljava/lang/Object;
.source "AcceptListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/AcceptListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/AcceptListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/AcceptListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/AcceptListPreference$2;->this$0:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "AcceptListPreference"

    const-string v1, "showDialog"

    const-string v2, "No List Items: Dismiss"

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    # setter for: Lcom/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z
    invoke-static {v0}, Lcom/android/settings/nearby/AcceptListPreference;->access$002(Z)Z

    return-void
.end method
