.class public Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaInitParam"
.end annotation


# instance fields
.field public alpha_blending_image_frame:I

.field public angle_fov:I

.field public bg_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$BgColor;

.field public blink_preview_mode:I

.field public disp_current_image:I

.field public effective_input_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public fix_current_image:I

.field public format:Ljava/lang/String;

.field public gradually_disp_guide_frame:I

.field public guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public input_angle_of_view_degree:D

.field public input_height:I

.field public input_width:I

.field public mask_poles:I

.field public max_angle_fov:I

.field public mode:I

.field public preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public render_mode:I

.field public scroll_limit_type:I

.field public state_error_alignment_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public state_info_stitchable_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public state_warning_need_to_stop_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public state_warning_toofast_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

.field public still_angle_of_view_degree:D

.field public still_height:I

.field public still_width:I

.field public use_still_capture:I

.field public version:I

.field public wire_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->wire_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->effective_input_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_need_to_stop_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_info_stitchable_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofast_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_error_alignment_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$BgColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$BgColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$BgColor;

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    return-void
.end method
