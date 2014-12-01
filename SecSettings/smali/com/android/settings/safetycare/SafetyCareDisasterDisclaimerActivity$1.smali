.class Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;
.super Ljava/lang/Object;
.source "SafetyCareDisasterDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    # invokes: Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->access$000(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    return-void
.end method
