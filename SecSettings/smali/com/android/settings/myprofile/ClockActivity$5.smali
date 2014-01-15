.class Lcom/android/settings_ex/myprofile/ClockActivity$5;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myprofile/ClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->setDefaultImage()V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    #getter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$700(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 272
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020386

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    #getter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$800(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 274
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 275
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    #getter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$900(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 276
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$5;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
