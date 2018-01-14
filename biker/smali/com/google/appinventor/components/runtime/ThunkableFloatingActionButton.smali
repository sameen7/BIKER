.class public Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkableFloatingActionButton.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A floating action button (FAB) represents the primary action in an application. Only one FAB is recommended per screen to represent the most common action. It is used for a promoted action."
    docUri = "user-interface/fab-floating-action-button"
    iconName = "images/floatingActionButton.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final matchParentLength:I = -0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private animationDuration:I

.field private backgroundColor:I

.field private buttonLayout:Landroid/widget/LinearLayout;

.field private buttonSize:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private created:Z

.field private drawable:Landroid/graphics/drawable/GradientDrawable;

.field private elevation:F

.field private font:Landroid/graphics/Typeface;

.field private iconColor:I

.field private iconName:Ljava/lang/String;

.field private iconSize:I

.field private iconTextView:Landroid/widget/TextView;

.field private layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private listening:Z

.field private final orientationSensor:Landroid/hardware/Sensor;

.field private paddingBottom:I

.field private paddingRight:I

.field private relative:Landroid/widget/RelativeLayout;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private shadowLayout:Landroid/widget/LinearLayout;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/16 v1, 0x10

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 64
    const v0, -0xde690d

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    .line 70
    const-string v0, "add"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    .line 71
    const/16 v0, 0x18

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconSize:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->created:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    .line 77
    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 85
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->activity:Landroid/app/Activity;

    .line 88
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    .line 89
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    .line 90
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    .line 91
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->elevation:F

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->sensorManager:Landroid/hardware/SensorManager;

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->orientationSensor:Landroid/hardware/Sensor;

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "MaterialIcons-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->font:Landroid/graphics/Typeface;

    .line 100
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->create()V

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private changeIconWithFade(Ljava/lang/String;)V
    .locals 4
    .param p1, "newIconName"    # Ljava/lang/String;

    .prologue
    .line 320
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    .line 322
    .local v0, "fadeDuration":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 324
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;Ljava/lang/String;I)V

    .line 325
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 340
    return-void
.end method

.method private convertDpToPixel(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 375
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private create()V
    .locals 10

    .prologue
    const/16 v9, 0x55

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 141
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->created:Z

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v0, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    .local v1, "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v2, "shadowLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    .line 153
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 154
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 157
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 159
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    .line 160
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 161
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 164
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 165
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->elevation:F

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    .line 175
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 176
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 177
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 178
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 183
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    .line 192
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 194
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 195
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 200
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->created:Z

    .line 202
    return-void
.end method

.method private hideFAB()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    .line 346
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    int-to-long v2, v1

    .line 347
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$3;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 354
    return-void
.end method

.method private showFAB()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    .line 360
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    int-to-long v2, v1

    .line 361
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$4;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)V

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    return-void
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->listening:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->orientationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->listening:Z

    .line 119
    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->listening:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->listening:Z

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public AnimationDuration(I)V
    .locals 0
    .param p1, "animationDuration"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "300"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the duration of the transition animation of the FAB in milliseconds. The shorter the duration is, the faster the animation would be."
    .end annotation

    .prologue
    .line 258
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    .line 259
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Background color for the FAB."
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "-14575885"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies background color for the FAB."
    .end annotation

    .prologue
    .line 214
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 218
    return-void
.end method

.method public ButtonSize(I)V
    .locals 2
    .param p1, "buttonSize"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "56"
        editorType = "fab_button_size"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the FAB is Clicked"
    .end annotation

    .prologue
    .line 316
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public IconColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for the icon of the FAB."
    .end annotation

    .prologue
    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    return v0
.end method

.method public IconColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "-1"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies color for the icon of the FAB."
    .end annotation

    .prologue
    .line 230
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    return-void
.end method

.method public IconName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Name (or code) for the FAB icon. You can find the icon name (or code) here https://material.io/icons/"
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public IconName(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "add"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the name (or code) for the FAB icon. You can find the icon name (or code) here https://material.io/icons/"
    .end annotation

    .prologue
    .line 306
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    if-lez v0, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->changeIconWithFade(Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public PaddingBottom(I)V
    .locals 4
    .param p1, "paddingBottom"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the distance between the bottom edge of the FAB and the bottom edge of the screen. The default value is 16 dp."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 292
    return-void
.end method

.method public PaddingRight(I)V
    .locals 4
    .param p1, "paddingRight"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the distance between the right edge of the FAB and the right edge of the screen. The default value is 16 dp."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 282
    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the FAB should be visible on the screen. Value is true if the FAB is showing and false if hidden."
    .end annotation

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    .line 246
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->showFAB()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->hideFAB()V

    goto :goto_0
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Visibility of the FAB."
    .end annotation

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->stopListening()V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->startListening()V

    .line 133
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->create()V

    .line 108
    :cond_0
    return-void
.end method
