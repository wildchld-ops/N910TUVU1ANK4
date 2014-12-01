.class Lcom/diotek/ime/implement/setting/HwrSettings$1;
.super Ljava/lang/Object;
.source "HwrSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/HwrSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/HwrSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/HwrSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/HwrSettings$1;->this$0:Lcom/diotek/ime/implement/setting/HwrSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/HwrSettings$1;->this$0:Lcom/diotek/ime/implement/setting/HwrSettings;

    # getter for: Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/HwrSettings;->access$000(Lcom/diotek/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/HwrSettings$1;->this$0:Lcom/diotek/ime/implement/setting/HwrSettings;

    # getter for: Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/HwrSettings;->access$000(Lcom/diotek/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/HwrSettings$1;->this$0:Lcom/diotek/ime/implement/setting/HwrSettings;

    # getter for: Lcom/diotek/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/HwrSettings;->access$000(Lcom/diotek/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1
.end method
