.class Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;
.super Ljava/lang/Object;
.source "PersonalizerSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->removeKPMExFolderByThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    # invokes: Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->removeKPMExFolder()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->access$300(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    return-void
.end method
