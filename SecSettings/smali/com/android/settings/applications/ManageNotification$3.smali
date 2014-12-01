.class Lcom/android/settings/applications/ManageNotification$3;
.super Ljava/lang/Object;
.source "ManageNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageNotification;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageNotification;

.field final synthetic val$panel_check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageNotification;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageNotification$3;->this$0:Lcom/android/settings/applications/ManageNotification;

    iput-object p2, p0, Lcom/android/settings/applications/ManageNotification$3;->val$panel_check:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification$3;->val$panel_check:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/applications/ManageNotification$3;->val$panel_check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
