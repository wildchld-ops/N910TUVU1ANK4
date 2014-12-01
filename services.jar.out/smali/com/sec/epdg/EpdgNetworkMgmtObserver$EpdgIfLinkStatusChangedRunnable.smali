.class Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;
.super Ljava/lang/Object;
.source "EpdgNetworkMgmtObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgIfLinkStatusChangedRunnable"
.end annotation


# instance fields
.field private final mBool:Z

.field private final mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mString:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mBool:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mBool:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method
