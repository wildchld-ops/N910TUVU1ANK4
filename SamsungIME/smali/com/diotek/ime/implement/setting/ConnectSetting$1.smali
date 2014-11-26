.class Lcom/diotek/ime/implement/setting/ConnectSetting$1;
.super Ljava/lang/Object;
.source "ConnectSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ConnectSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$1;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1    # Landroid/preference/Preference;

    const/4 v5, 0x1

    instance-of v4, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$1;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "first_xt9_9_execution"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$1;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    # invokes: Lcom/diotek/ime/implement/setting/ConnectSetting;->showXt9GuideDialog()V
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/ConnectSetting;->access$000(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    :cond_0
    return v5
.end method
