.class Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThunkableFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->changeIconWithFade(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

.field final synthetic val$fadeDuration:I

.field final synthetic val$newIconName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->val$newIconName:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->val$fadeDuration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->val$newIconName:Ljava/lang/String;

    # setter for: Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->access$002(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    # getter for: Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->access$100(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->val$newIconName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    # getter for: Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->access$100(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->val$fadeDuration:I

    int-to-long v2, v1

    .line 332
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 338
    return-void
.end method
