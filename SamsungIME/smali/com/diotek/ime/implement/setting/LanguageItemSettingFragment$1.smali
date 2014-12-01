.class Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment$1;
.super Ljava/lang/Object;
.source "LanguageItemSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment$1;->this$0:Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment$1;->this$0:Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->changeInputMethodType(Landroid/preference/Preference;)V

    const/4 v0, 0x1

    return v0
.end method
