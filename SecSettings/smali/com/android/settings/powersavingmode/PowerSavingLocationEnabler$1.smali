.class Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingLocationEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
