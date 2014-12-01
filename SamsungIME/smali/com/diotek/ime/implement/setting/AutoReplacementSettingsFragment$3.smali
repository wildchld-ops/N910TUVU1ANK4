.class Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;
.super Ljava/lang/Object;
.source "AutoReplacementSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->exitAutoRelacementSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->access$400(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    # setter for: Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z
    invoke-static {v1, v2}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->access$502(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;Z)Z

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->access$300(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
