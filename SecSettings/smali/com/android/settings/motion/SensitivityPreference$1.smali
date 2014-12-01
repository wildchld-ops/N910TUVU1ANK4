.class Lcom/android/settings/motion/SensitivityPreference$1;
.super Ljava/lang/Object;
.source "SensitivityPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/SensitivityPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/SensitivityPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/SensitivityPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/SensitivityPreference$1;->this$0:Lcom/android/settings/motion/SensitivityPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/motion/SensitivityPreference$1;->this$0:Lcom/android/settings/motion/SensitivityPreference;

    const/4 v1, -0x3

    # setter for: Lcom/android/settings/motion/SensitivityPreference;->mWhichButtonClicked:I
    invoke-static {v0, v1}, Lcom/android/settings/motion/SensitivityPreference;->access$002(Lcom/android/settings/motion/SensitivityPreference;I)I

    iget-object v0, p0, Lcom/android/settings/motion/SensitivityPreference$1;->this$0:Lcom/android/settings/motion/SensitivityPreference;

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference$1;->this$0:Lcom/android/settings/motion/SensitivityPreference;

    # getter for: Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/motion/SensitivityPreference;->access$100(Lcom/android/settings/motion/SensitivityPreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/motion/SensitivityPreference$1;->this$0:Lcom/android/settings/motion/SensitivityPreference;

    # getter for: Lcom/android/settings/motion/SensitivityPreference;->mCurrentMotion:I
    invoke-static {v2}, Lcom/android/settings/motion/SensitivityPreference;->access$200(Lcom/android/settings/motion/SensitivityPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion/SensitivityPreference;->startSensitivityTest(II)V

    return-void
.end method
