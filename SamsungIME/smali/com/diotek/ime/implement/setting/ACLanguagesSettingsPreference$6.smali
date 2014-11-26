.class Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;
.super Ljava/lang/Object;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForWiFi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    # setter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForWifi:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$602(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Z)Z

    return-void
.end method
