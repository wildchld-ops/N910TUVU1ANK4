.class Lcom/android/mms/ui/MmsSinglePageFrame$19;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$19;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$19;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    # invokes: Lcom/android/mms/ui/MmsSinglePageFrame;->drawTitle_Subject()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1700(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    return-void
.end method
