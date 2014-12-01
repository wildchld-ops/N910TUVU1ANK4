.class Lcom/android/settings/SmartNetworkPreference$1;
.super Ljava/lang/Object;
.source "SmartNetworkPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNetworkPreference;->showGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNetworkPreference;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNetworkPreference;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartNetworkPreference$1;->this$0:Lcom/android/settings/SmartNetworkPreference;

    iput-object p2, p0, Lcom/android/settings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/SmartNetworkPreference$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SmartNetworkPreference$1;->this$0:Lcom/android/settings/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/settings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/SmartNetworkPreference;->toggleValue(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/SmartNetworkPreference$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartNetworkPreference$1;->this$0:Lcom/android/settings/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/settings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/SmartNetworkPreference;->disableGuideDialog(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmartNetworkPreference$1;->this$0:Lcom/android/settings/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/settings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    return-void
.end method
