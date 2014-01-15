.class Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;
.super Landroid/os/Handler;
.source "PersonalVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/personalvibration/PersonalVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundViewHandler"
.end annotation


# static fields
.field public static final MSG_PLAY_STOPPED:I = 0x71

.field public static final MSG_TIMER_PAUSED:I = 0x70

.field public static final MSG_TIMER_STOPPED:I = 0x6f


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/personalvibration/PersonalVibration;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/personalvibration/PersonalVibration;Lcom/android/settings_ex/personalvibration/PersonalVibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/settings_ex/personalvibration/PersonalVibration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 111"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 214
    :pswitch_1
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 229
    :pswitch_2
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings_ex/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
