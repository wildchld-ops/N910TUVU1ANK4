.class Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity$1;
.super Ljava/lang/Object;
.source "PersonalPageTutorialAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->initViewsForAdd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;

    # invokes: Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->UpdateTutorialPage()V
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;)V

    return-void
.end method
