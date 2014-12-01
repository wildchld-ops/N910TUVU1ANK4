.class Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$2;
.super Ljava/lang/Object;
.source "Xt9AdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    # setter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->TracePopup:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$002(Z)Z

    return-void
.end method
