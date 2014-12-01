.class public Lcom/android/incallui/AnswerImageFragmentVoiceCall;
.super Lcom/android/incallui/AnswerImageFragment;
.source "AnswerImageFragmentVoiceCall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerImageFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/incallui/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method
