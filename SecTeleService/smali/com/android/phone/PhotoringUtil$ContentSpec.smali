.class public Lcom/android/phone/PhotoringUtil$ContentSpec;
.super Ljava/lang/Object;
.source "PhotoringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentSpec"
.end annotation


# instance fields
.field errMsg:Ljava/lang/String;

.field img_default_resolution_X:I

.field img_default_resolution_Y:I

.field img_max_size:J

.field img_min_resolution_X:I

.field img_min_resolution_Y:I

.field result:I

.field video_bitrate:J

.field video_editing_duration:I

.field video_framerate:I

.field video_max_size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/phone/PhotoringUtil$ContentSpec;->video_editing_duration:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/android/phone/PhotoringUtil$ContentSpec;->video_max_size:J

    return-void
.end method
