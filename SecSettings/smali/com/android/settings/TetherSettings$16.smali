.class Lcom/android/settings/TetherSettings$16;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->saveTxPowerModeValue(I)I
    invoke-static {v2, v5}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;I)I

    iget-object v3, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v2, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mCustomView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b063c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    # setter for: Lcom/android/settings/TetherSettings;->mTxPowerModeDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3, v2}, Lcom/android/settings/TetherSettings;->access$1302(Lcom/android/settings/TetherSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mTxPowerModeDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$1500(Lcom/android/settings/TetherSettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/TetherSettings;->access$1500(Lcom/android/settings/TetherSettings;)Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "TX_POWER_MODE_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
