.class public final Lcom/visionobjects/stylus/core/InputMethod$GestureType;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/stylus/core/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GestureType"
.end annotation


# static fields
.field public static final Backspace:I = 0x100

.field public static final JoinLink:I = 0x10

.field public static final NotAGesture:I = 0x0

.field public static final Overwrite:I = 0x40

.field public static final PigTail:I = 0x80

.field public static final Return:I = 0x400

.field public static final ScratchOut:I = 0x2

.field public static final Selection:I = 0x20

.field public static final SingleTap:I = 0x8

.field public static final Space:I = 0x200

.field public static final StrikeThrough:I = 0x1

.field public static final Underline:I = 0x800

.field public static final VerticalCut:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
