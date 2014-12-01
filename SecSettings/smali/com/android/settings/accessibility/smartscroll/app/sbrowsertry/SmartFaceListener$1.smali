.class Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$1;
.super Ljava/lang/Object;
.source "SmartFaceListener.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 7

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setListener this:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",service_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/sec/android/smartface/FaceInfo;->horizontalMovement:I

    iget v1, p1, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    iget v3, p1, Lcom/sec/android/smartface/FaceInfo;->processStatus:I

    iget v2, p1, Lcom/sec/android/smartface/FaceInfo;->guideDir:I

    iget-object v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z
    invoke-static {v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    # invokes: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->checkSmartScrollStatus(II)Z
    invoke-static {v4, v3, v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    # invokes: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->checkSmartScrollDirection(II)V
    invoke-static {v4, v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;II)V

    :cond_0
    return-void
.end method
