.class public Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
.super Ljava/lang/Object;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdaptiveEvent"
.end annotation


# instance fields
.field private requestClass:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

.field private view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->requestClass:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/widget/RemoteViews;

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->requestClass:Ljava/lang/String;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-object v0
.end method
