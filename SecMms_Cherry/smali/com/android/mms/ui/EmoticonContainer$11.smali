.class Lcom/android/mms/ui/EmoticonContainer$11;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$11;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1    # I
    .param p2    # F
    .param p3    # I

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$11;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsNoRecent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$3800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$11;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFavoriteEmoticons(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$11;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsNoRecent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$3800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$11;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsNoRecent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$3800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$11;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsNoRecent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$3800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$11;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;->refreshTabSelector(I)V

    return-void
.end method
