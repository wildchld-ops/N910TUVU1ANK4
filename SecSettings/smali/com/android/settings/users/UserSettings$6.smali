.class Lcom/android/settings/users/UserSettings$6;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$6;->this$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$6;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$6;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$6;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/users/UserSettings;->en_mobile_data:I
    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1602(Lcom/android/settings/users/UserSettings;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$6;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/users/UserSettings;->en_mobile_data:I
    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1602(Lcom/android/settings/users/UserSettings;I)I

    goto :goto_0
.end method
