.class Lcom/android/settings/sleepingmode/SleepingModeSettings$2;
.super Landroid/preference/Preference;
.source "SleepingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sleepingmode/SleepingModeSettings;->initPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f0b0571

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # setter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$102(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStarthour:I
    invoke-static {v2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$200(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStartmin:I
    invoke-static {v3}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$300(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I

    move-result v3

    # invokes: Lcom/android/settings/sleepingmode/SleepingModeSettings;->setStartTime(II)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$400(Lcom/android/settings/sleepingmode/SleepingModeSettings;II)V

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$100(Lcom/android/settings/sleepingmode/SleepingModeSettings;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/settings/sleepingmode/SleepingModeSettings$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/sleepingmode/SleepingModeSettings$2$1;-><init>(Lcom/android/settings/sleepingmode/SleepingModeSettings$2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
