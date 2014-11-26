.class final Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnKeyLaunchButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    .param p2    # Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
