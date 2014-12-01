.class Lcom/android/settings/personalpage/PersonalPageTutorial$1;
.super Ljava/lang/Object;
.source "PersonalPageTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageTutorial;->initViewsForStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    # invokes: Lcom/android/settings/personalpage/PersonalPageTutorial;->UpdateTutorialPage()V
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->access$000(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    return-void
.end method
