.class Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity$1;
.super Ljava/lang/Object;
.source "PersonalPageTutorialDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->initViewsForAPP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;

    # invokes: Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->UpdateTutorialPage()V
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->access$000(Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;)V

    return-void
.end method
