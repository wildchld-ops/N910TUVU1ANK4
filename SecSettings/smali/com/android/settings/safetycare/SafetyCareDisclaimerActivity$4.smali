.class Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;
.super Ljava/lang/Object;
.source "SafetyCareDisclaimerActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$300(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setOKButton()V

    return-void
.end method
