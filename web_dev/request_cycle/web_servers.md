# Assignment 9.2 Release 1
* What are some of the key design philosophies of the Linux operating system?
  * According to opensource.com, thee are 9 tenets:
    1. Small is Beautiful
    2. Each Program Does One Thing Well
    3. Prototype as Soon as Possible
    4. Choose Portability Over Efficiency
    5. Store Data in Flat Text Files
    6. Use Software Leverage
    7. Use Shell Scripts to Increase Leverage and Portability
    8. Avoid Captive User Interfaces
    9. Make Every Program a Filter
* In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
  * A virtual private server is a virtualized operating system that operates in the cloud, hosted by a company like Digital Ocean or Amazon. It can be connected to via ssh, and controlled via the commandline. The advantages of using a vps are that it gives you root access to a machine that is walled off from your own system, giving you some security when using it as a server/web server. It is also cheaper than having an actual hardware server, and is very fast to set up as seen in the video.
* Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
  * Running your system as root makes your system vulnerable to mistakes that have large impacts on your system. If you run as a limited access user, you can be prevented from accidentally doing damaging things to your system. Any invasive software that comes in while running as root will also be able to harm your system at root level. It is a good idea to only have as much access as you need for any given task so that you protect yourself from errors and attacks.
