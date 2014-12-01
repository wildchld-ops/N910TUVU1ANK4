.class Lcom/android/settings/sleepingmode/SleepingModeSettings$3;
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

    iput-object p1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f0b0570

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0915ec

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0b0571

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # setter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2, v0}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$702(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget-object v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I
    invoke-static {v3}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$800(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I
    invoke-static {v4}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$900(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I

    move-result v4

    # invokes: Lcom/android/settings/sleepingmode/SleepingModeSettings;->setEndTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$1000(Lcom/android/settings/sleepingmode/SleepingModeSettings;II)V

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$700(Lcom/android/settings/sleepingmode/SleepingModeSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sleepingmode/SleepingModeSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepingmode/SleepingModeSettings$3$1;-><init>(Lcom/android/settings/sleepingmode/SleepingModeSettings$3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
