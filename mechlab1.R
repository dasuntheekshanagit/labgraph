weight_loading <- c(0,500,1000,1500,2000)
disp_loading <- c(0.00,0.07,0.16,0.28,0.40)
strain_loading <- c(0.00,75.21,182.08,303.22,412.58)

weight_unloading <- c(2000,1500,1000,500,0)
disp_unloading <- c(0.43,0.33,0.21,0.07,0.0)
strain_unloading <- c(409.01,322.94,220.67,109.64,0.0)

loading <- data.frame(weight_loading,disp_loading,strain_loading)

unloading <- data.frame(weight_unloading,disp_unloading,strain_unloading)

ggplot(data = loading,aes(x =weight_loading , y =disp_loading )) +
  geom_point()+
  geom_smooth(method = "lm",se = FALSE)+
  scale_x_continuous(breaks = c(seq(0,2000,50)))+
  scale_y_continuous(breaks = c(seq(0,0.40,0.025)))+
  theme(axis.text.x = element_text(angle = 45))

ggsave("weight vs displacment.png",width= 2000,height = 1024)

ggplot(data = loading,aes(x =weight_loading , y =strain_loading )) +
  geom_point()+
  geom_smooth(method = "lm",se = FALSE)+
  scale_x_continuous(breaks = c(seq(0,2000,50)))+
  scale_y_continuous(breaks = c(seq(0,500,20)))+
  theme(axis.text.x = element_text(angle = 45))

ggsave("weight vs straing.png",width= 2000,height = 1024)

ggplot(data = unloading,aes(x =weight_unloading , y =disp_unloading )) +
  geom_point()+
  geom_smooth(method = "lm",se = FALSE)+
  scale_x_continuous(breaks = c(seq(0,2000,50)))+
  scale_y_continuous(breaks = c(seq(0,0.40,0.025)))+
  theme(axis.text.x = element_text(angle = 45))

ggsave("weight vs displacment.png",width= 2000,height = 1024)

ggplot(data = unloading,aes(x =weight_unloading , y =strain_unloading )) +
  geom_point()+
  geom_smooth(method = "lm",se = FALSE)+
  scale_x_continuous(breaks = c(seq(0,2000,50)))+
  scale_y_continuous(breaks = c(seq(0,500,20)))+
  theme(axis.text.x = element_text(angle = 45))

ggsave("weight vs straing.png",width= 2000,height = 1024)