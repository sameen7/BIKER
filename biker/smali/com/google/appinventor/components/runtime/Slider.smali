.class public Lcom/google/appinventor/components/runtime/Slider;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Slider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Slider is a progress bar that adds a draggable thumb. You can touch the thumb and drag left or right to set the slider thumb position. As the Slider thumb is dragged, it will trigger the PositionChanged event, reporting the position of the Slider thumb. The reported position of the Slider thumb can be used to dynamically update another component attribute, such as the font size of a TextBox or the radius of a Ball."
    docUri = "user-interface/slider"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Slider"

.field private static final initialLeftColor:I = -0x6800

.field private static final initialLeftColorString:Ljava/lang/String; = "&HFFFF9800"

.field private static final initialRightColor:I = -0x616162

.field private static final initialRightColorString:Ljava/lang/String; = "&HFF9E9E9E"


# instance fields
.field private beforeThumb:Landroid/graphics/drawable/ClipDrawable;

.field private fullBar:Landroid/graphics/drawable/LayerDrawable;

.field private leftColor:I

.field private maxValue:F

.field private minValue:F

.field public final referenceGetThumb:Z

.field private rightColor:I

.field private final seekbar:Landroid/widget/SeekBar;

.field private thumbEnabled:Z

.field private thumbPosition:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v4, 0x1

    const v6, 0x102000d

    .line 98
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 90
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/16 v5, 0x10

    if-lt v3, v5, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    .line 99
    new-instance v3, Landroid/widget/SeekBar;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    .line 103
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->fullBar:Landroid/graphics/drawable/LayerDrawable;

    .line 106
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->fullBar:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->fullBar:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ScaleDrawable;

    .line 108
    .local v2, "sd":Landroid/graphics/drawable/ScaleDrawable;
    const/4 v0, 0x3

    .line 109
    .local v0, "gravity":I
    const/4 v1, 0x1

    .line 110
    .local v1, "orientation":I
    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v5, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->beforeThumb:Landroid/graphics/drawable/ClipDrawable;

    .line 115
    .end local v0    # "gravity":I
    .end local v1    # "orientation":I
    .end local v2    # "sd":Landroid/graphics/drawable/ScaleDrawable;
    :goto_1
    const/16 v3, -0x6800

    iput v3, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    .line 116
    const v3, -0x616162

    iput v3, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    .line 117
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 120
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 123
    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 124
    const/high16 v3, 0x42480000    # 50.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 125
    const/high16 v3, 0x41f00000    # 30.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 126
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    .line 128
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 138
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSeekbarPosition()V

    .line 149
    return-void

    .line 90
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->fullBar:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ClipDrawable;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Slider;->beforeThumb:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Slider;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Slider;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private setSeekbarPosition()V
    .locals 4

    .prologue
    .line 171
    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 179
    .local v0, "seekbarPosition":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    return-void
.end method

.method private setSliderColors()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->fullBar:Landroid/graphics/drawable/LayerDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->beforeThumb:Landroid/graphics/drawable/ClipDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    return-void
.end method


# virtual methods
.method public ColorLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .prologue
    .line 320
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    return v0
.end method

.method public ColorLeft(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF9800"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 335
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    .line 336
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 337
    return-void
.end method

.method public ColorRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .prologue
    .line 351
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    return v0
.end method

.method public ColorRight(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF9E9E9E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 366
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    .line 367
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 368
    return-void
.end method

.method public Height()I
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 433
    return-void
.end method

.method public MaxValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the slider max value."
        userVisible = true
    .end annotation

    .prologue
    .line 304
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    return v0
.end method

.method public MaxValue(F)V
    .locals 2
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the maximum value of slider.  Changing the maximum value also resets Thumbposition to be halfway between the minimum and the (new) maximum. If the new maximum is less than the current minimum, then minimum and maximum will both be set to this value.  Setting MaxValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .prologue
    .line 287
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 288
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 293
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    .line 294
    return-void
.end method

.method public MinValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the value of slider min value."
        userVisible = true
    .end annotation

    .prologue
    .line 275
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    return v0
.end method

.method public MinValue(F)V
    .locals 2
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the minimum value of slider.  Changing the minimum value also resets Thumbposition to be halfway between the (new) minimum and the maximum. If the new minimum is greater than the current maximum, then minimum and maximum will both be set to this value.  Setting MinValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .prologue
    .line 256
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 258
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    .line 264
    return-void
.end method

.method public PositionChanged(F)V
    .locals 4
    .param p1, "thumbPosition"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 398
    const-string v0, "PositionChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method public ThumbEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether or not to display the slider thumb."
        userVisible = true
    .end annotation

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    .line 193
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    if-eqz v1, :cond_1

    const/16 v0, 0xff

    .line 194
    .local v0, "alpha":I
    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;-><init>(Lcom/google/appinventor/components/runtime/Slider;Lcom/google/appinventor/components/runtime/Slider$1;)V

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;->getThumb(I)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 199
    return-void

    .line 193
    .end local v0    # "alpha":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ThumbEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether or not the slider thumb is being be shown"
        userVisible = true
    .end annotation

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    return v0
.end method

.method public ThumbPosition()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the position of slider thumb"
        userVisible = true
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    return v0
.end method

.method public ThumbPosition(F)V
    .locals 2
    .param p1, "position"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the position of the slider thumb. If this value is greater than MaxValue, then it will be set to same value as MaxValue. If this value is less than MinValue, then it will be set to same value as MinValue."
        userVisible = true
    .end annotation

    .prologue
    .line 228
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 231
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSeekbarPosition()V

    .line 232
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    .line 233
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 381
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 390
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    .line 391
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 404
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 409
    return-void
.end method
