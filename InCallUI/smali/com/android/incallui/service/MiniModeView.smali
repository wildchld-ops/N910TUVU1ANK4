.class public Lcom/android/incallui/service/MiniModeView;
.super Landroid/widget/RelativeLayout;
.source "MiniModeView.java"


# instance fields
.field mMiniModeCallService:Lcom/android/incallui/service/MiniModeCallService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/service/MiniModeView;->mMiniModeCallService:Lcom/android/incallui/service/MiniModeCallService;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
