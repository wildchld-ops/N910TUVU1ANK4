.class public Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;
.super Ljava/lang/Object;
.source "RemoteControllerDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Position"
.end annotation


# instance fields
.field column:I

.field row:I

.field final synthetic this$0:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;II)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->this$0:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    iput p3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    return-void
.end method
